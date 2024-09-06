// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract patientshistory {
    struct Patient {
        string name;
        uint age;
        string conditions;
        string allergies;
        string medications;
        string procedures;
    }

    mapping(address => Patient) public patients;

    function addPatient(
        string memory _name,
        uint _age,
        string memory _conditions,
        string memory _allergies,
        string memory _medications,
        string memory _procedures
    ) public {
        Patient memory newPatient = Patient({
            name: _name,
            age: _age,
            conditions: _conditions,
            allergies: _allergies,
            medications: _medications,
            procedures: _procedures
        });
        
        patients[msg.sender] =newPatient;
    }


    function updatepatient( 
        
        string memory _conditions,
        string memory _allergies,
        string memory _medications,
        string memory _procedures)public{
            Patient memory updatepatient= patients[msg.sender];
            updatepatient.conditions= _conditions;
            updatepatient.allergies=_allergies;
            updatepatient.medications=_medications;
            
            updatepatient.procedures=_procedures;


        }
}
