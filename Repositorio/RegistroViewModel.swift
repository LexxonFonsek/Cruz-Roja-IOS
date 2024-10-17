import Foundation

final class RegistroViewModel: ObservableObject {
    @Published var datos: [RegistroModel] = []
    @Published var massageError: String?
    private let registroRepository: RegistroRepository
    
    init(registroRepository: RegistroRepository = RegistroRepository()) {
        self.registroRepository = registroRepository
    }
    
    

    func saveData(apellidop: String, apellidom: String, curp: String, nacimiento: String, nombre: String, nss: String, sexo: String, telefono: String) {
        registroRepository.saveData(apellidop: apellidop, apellidom: apellidom, curp: curp, nacimiento: nacimiento, nombre: nombre, nss: nss, sexo: sexo, telefono: telefono) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let saveData):
                self.data = saveData
            case .failure(let error):
                self.messageError = error.localizedDescription
            }
        }
    }
}
