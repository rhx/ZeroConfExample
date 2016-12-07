import CDNS_SD
import Foundation

var sdRef = DNSServiceRef(bitPattern: 0)
let rv = DNSServiceRegister(&sdRef, 0, 0, "ComputerName", "_testtype._tcp", nil, nil, 1234, 0, nil, nil, nil)
guard Int(rv) == kDNSServiceErr_NoError else {
	print("Error \(rv) registering service")
	exit(EXIT_FAILURE)
}

RunLoop.current.run(until: Date(timeIntervalSinceNow: 20))
