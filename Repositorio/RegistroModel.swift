import FirebaseFirestore
import FirebaseFirestoreSwift


struct RegistroModel: Decodable, Identifiable {
    @DocumentID var id: String?
    let apellidop: String
    let apellidom: String
    let curp: String
    let nacimiento: String
    let nombre: String
    let nss: String
    let sexo: String
    let telefono: String
}
