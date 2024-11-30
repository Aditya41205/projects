// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract kiit1stand2ndsemcgpacalculator {

    //variables for sem1
    uint256 private MATHS_CREDIT = 4;
    uint256 private PHYSICS_CREDIT = 3;
    uint256 private BIO_CREDIT = 2;
    uint256 private EVS_CREDIT = 2;
    uint256 private ELECTIVE1_CREDIT = 2;
    uint256 private ELECTIVE2_CREDIT = 2;
    uint256 private PROGRAMMING_CREDIT = 4;
    uint256 private EDGRAPHICS_CREDIT = 1;
    uint256 private PHYSICSLAB_CREDIT = 1;
    uint256 public totalnumberofcreditsinsem1 = 21;

    //variables for sem2
    uint256 private MATHS2_CREDIT = 4;
    uint256 private CHEMISTRY_CREDIT = 3;
    uint256 private ENGLISH_CREDIT = 2;
    uint256 private COMLAB_CREDIT = 1;
    uint256 private ELECTIVE_CREDIT = 2;
    uint256 private ENGINEERINGLAB_CREDIT = 1;
    uint256 private YOGA_CREDIT = 1;
    uint256 private CHEMLAB_CREDIT = 1;
    uint256 private BETC_CREDIT = 2;
    uint256 private BEE_CREDIT = 2;
    uint256 private WORKSHOP_CREDIT = 1;
    uint256 public totalnumberofcreditsinsem2 = 20;

    // Struct for sem1 student
    struct SEM1 {
        string name;
        uint256 roll_no;
        uint256 MATHS_GRADE;
        uint256 PHYSICS_GRADE;
        uint256 BIO_GRADE;
        uint256 EVS_GRADE;
        uint256 ELECTIVE1_GRADE;
        uint256 ELECTIVE2_GRADE;
        uint256 PROGRAMMING_GRADE;
        uint256 EDGRAPHICS_GRADE;
        uint256 PHYSICSLAB_GRADE;
        uint256 SGPASEM1;
    }

    // Struct for sem2 student
    struct SEM2 {
        string _name;
        uint256 _roll_no;
        uint256 MATHS2_GRADE;
        uint256 CHEMISTRY_GRADE;
        uint256 ENGLISH_GRADE;
        uint256 COMLAB_GRADE;
        uint256 ELECTIVE_GRADE;
        uint256 ENGINEERINGLAB_GRADE;
        uint256 YOGA_GRADE;
        uint256 CHEMLAB_GRADE;
        uint256 BETC_GRADE;
        uint256 BEE_GRADE;
        uint256 WORKSHOP_GRADE;
        uint256 SEM2SGPA;
    }

    // Mappings for student info
    mapping(address => SEM1) public SEM1info;
    mapping(address => SEM2) public SEM2info;

    // Function to store sem1 values
    function SEM1VALUES(
        string memory _name,
        uint256 _roll_no,
        uint256 _MATHS_GRADE,
        uint256 _PHYSICS_GRADE,
        uint256 _BIO_GRADE,
        uint256 _EVS_GRADE,
        uint256 _ELECTIVE1_GRADE,
        uint256 _ELECTIVE2_GRADE,
        uint256 _PROGRAMMING_GRADE,
        uint256 _EDGRAPHICS_GRADE,
        uint256 _PHYSICSLAB_GRADE
    ) public {
        require(_MATHS_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_PHYSICS_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_BIO_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_EVS_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_ELECTIVE1_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_ELECTIVE2_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_PROGRAMMING_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_EDGRAPHICS_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_PHYSICSLAB_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");

        SEM1 storage sem1 = SEM1info[msg.sender];

        sem1.name = _name;
        sem1.roll_no = _roll_no;
        sem1.MATHS_GRADE = _MATHS_GRADE;
        sem1.PHYSICS_GRADE = _PHYSICS_GRADE;
        sem1.BIO_GRADE = _BIO_GRADE;
        sem1.EVS_GRADE = _EVS_GRADE;
        sem1.ELECTIVE1_GRADE = _ELECTIVE1_GRADE;
        sem1.ELECTIVE2_GRADE = _ELECTIVE2_GRADE;
        sem1.PROGRAMMING_GRADE = _PROGRAMMING_GRADE;
        sem1.EDGRAPHICS_GRADE = _EDGRAPHICS_GRADE;
        sem1.PHYSICSLAB_GRADE = _PHYSICSLAB_GRADE;

        sem1.SGPASEM1 = (
            (sem1.MATHS_GRADE * MATHS_CREDIT) +
            (sem1.PHYSICS_GRADE * PHYSICS_CREDIT) +
            (sem1.BIO_GRADE * BIO_CREDIT) +
            (sem1.EVS_GRADE * EVS_CREDIT) +
            (sem1.ELECTIVE1_GRADE * ELECTIVE1_CREDIT) +
            (sem1.ELECTIVE2_GRADE * ELECTIVE2_CREDIT) +
            (sem1.PROGRAMMING_GRADE * PROGRAMMING_CREDIT) +
            (sem1.EDGRAPHICS_GRADE * EDGRAPHICS_CREDIT) +
            (sem1.PHYSICSLAB_GRADE * PHYSICSLAB_CREDIT)
        ) / totalnumberofcreditsinsem1;
    }

    // Function to store sem2 values
    function SEM2VALUES(
        string memory __name,
        uint256 __roll_no,
        uint256 _MATHS2_GRADE,
        uint256 _CHEMISTRY_GRADE,
        uint256 _ENGLISH_GRADE,
        uint256 _COMLAB_GRADE,
        uint256 _ELECTIVE_GRADE,
        uint256 _ENGINEERINGLAB_GRADE,
        uint256 _YOGA_GRADE,
        uint256 _CHEMLAB_GRADE,
        uint256 _BETC_GRADE,
        uint256 _BEE_GRADE,
        uint256 _WORKSHOP_GRADE
    ) public {
        require(_MATHS2_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_CHEMISTRY_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_ENGLISH_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_COMLAB_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_ELECTIVE_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_ENGINEERINGLAB_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_YOGA_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_CHEMLAB_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_BETC_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_BEE_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");
        require(_WORKSHOP_GRADE <= 10, "GRADE LIMIT IS BETWEEN 0 TO 10");

        SEM2 storage sem2 = SEM2info[msg.sender];

        sem2._name = __name;
        sem2._roll_no = __roll_no;
        sem2.MATHS2_GRADE = _MATHS2_GRADE;
        sem2.CHEMISTRY_GRADE = _CHEMISTRY_GRADE;
        sem2.ENGLISH_GRADE = _ENGLISH_GRADE;
        sem2.COMLAB_GRADE = _COMLAB_GRADE;
        sem2.ELECTIVE_GRADE = _ELECTIVE_GRADE;
        sem2.ENGINEERINGLAB_GRADE = _ENGINEERINGLAB_GRADE;
        sem2.YOGA_GRADE = _YOGA_GRADE;
        sem2.CHEMLAB_GRADE = _CHEMLAB_GRADE;
        sem2.BETC_GRADE = _BETC_GRADE;
        sem2.BEE_GRADE = _BEE_GRADE;
        sem2.WORKSHOP_GRADE = _WORKSHOP_GRADE;

        sem2.SEM2SGPA = (
            (sem2.MATHS2_GRADE * MATHS2_CREDIT) +
            (sem2.CHEMISTRY_GRADE * CHEMISTRY_CREDIT) +
            (sem2.ENGLISH_GRADE * ENGLISH_CREDIT) +
            (sem2.COMLAB_GRADE * COMLAB_CREDIT) +
            (sem2.ELECTIVE_GRADE * ELECTIVE_CREDIT) +
            (sem2.ENGINEERINGLAB_GRADE * ENGINEERINGLAB_CREDIT) +
            (sem2.YOGA_GRADE * YOGA_CREDIT) +
            (sem2.CHEMLAB_GRADE * CHEMLAB_CREDIT) +
            (sem2.BETC_GRADE * BETC_CREDIT) +
            (sem2.BEE_GRADE * BEE_CREDIT) +
            (sem2.WORKSHOP_GRADE * WORKSHOP_CREDIT)
        ) / totalnumberofcreditsinsem2;
    }
}
