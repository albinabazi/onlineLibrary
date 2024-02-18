
/* Start of About-Us*/
var teamMembers =[
    {
        "id": 1,
        "name": "John Doe",
        "username": "johndoe",
        "description": "He specializes in data analysis and machine learning.",
        "gender": "boy"
    },
    {
        "id": 2,
        "name": "Ethan Smith",
        "username": "ethans",
        "description": "He loves creating engaging content and social media marketing.",
        "gender": "boy"
    },
    {
        "id": 3,
        "name": "Olivia Brown",
        "username": "oliviab",
        "description": "She excels in project management and team coordination.",
    },
    {
        "id": 4,
        "name": "William Wilson",
        "username": "williamw",
        "description": "He enjoys front-end development and user experience design.",
        "gender": "boy"
    },
    {
        "id": 5,
        "name": "Emma Taylor",
        "username": "emmat",
        "description": "She is skilled in content writing and digital marketing strategies.",
    }
];

document.addEventListener("DOMContentLoaded", function () {
    var teamImages = document.querySelectorAll(".team-img");

    teamImages.forEach(function (image) {
        image.addEventListener("click", function () {
            var memberId = this.getAttribute("data-member-id");
            var member = teamMembers.find(function (member) {
                return member.id == memberId;
            });

            if (member) {
                var modalBody = document.getElementById("memberDetails");
                modalBody.innerHTML = `
                    <p>Name: ${member.name}</p>
                    <p>Username: ${member.username}</p>
                    <p>${member.description}</p>
                `;
            }
        });
    });
});
/* End Of About-Us */