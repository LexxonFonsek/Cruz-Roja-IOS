import FirebaseFirestore
import Foundation


struct RegisterViewModel: Decodable, Identifiable {
    @DocumentID var id: String?
    let apellidom: String
    let apellidop: String
    let curp: String
    let nacimiento: String
    let nombre: String
    let nss: String
    let sexo: String
    let telefono: String
    
}
