import Foundation

final class RegistroRepository {
    private let registroDatasource: RegistroDatasource
    
    init(registroDatasource: RegistroDatasource = RegistroDatasource()) {
        self.registroDatasource = registroDatasource
    }
    
    func getAllData(completionBlock: @escaping (Result<[RegistroModel], Error>) -> Void) {
        self.RegistroDatasource.getAllData(completionBlock: completionBlock)
    }

    func saveData(completionBlock: @escaping (Result<[RegistroModel], Error>) -> Void) {
        self.RegistroDatasource.saveData(completionBlock: completionBlock)
    }
}