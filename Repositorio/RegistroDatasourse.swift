final class RegistroDatasource {
    private let database = Firestore.firestore()
    private let collection = "data"
    
    func getAllData(completionBlock: @escaping (Result<[RegistroModel], Error>) -> Void) {
        database.collection(collection)
            .addSnapshotListener { query, error in
                if let error = error {
                    print("Error retrieving all data \(error.localizedDescription)")
                    completionBlock(.failure(error))
                    return
                }
                guard let documents = query?.documents.compactMap({ $0 }) else {
                    completionBlock(.success([]))
                    return
                }
                let data = documents.map { try? $0.data(as: RegistroModel.self) }
                                     .compactMap { $0 }
                completionBlock(.success(data))
            }
    }
}