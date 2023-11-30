
const roomPrices = {
    standard: 100,
    deluxe: 150,
    suite: 300,
};

const servicesPrices = {
    breakfast: 10,
    wifi: 5,
    parking: 15,
    pool: 10,
    spa: 20,
};

document.getElementById('reservation-form').addEventListener('input', function () {
    const roomType = document.getElementById('room-type').value;
    const rooms = parseInt(document.getElementById('rooms').value) || 1;

    const selectedServices = Array.from(document.querySelectorAll('input[name="services"]:checked'))
        .map(service => service.value);
    const servicesTotal = selectedServices.reduce((total, service) => total + servicesPrices[service], 0);

    const checkInDate = new Date(document.getElementById('check-in-date').value);
    const checkOutDate = new Date(document.getElementById('check-out-date').value);
    const guests = parseInt(document.getElementById('guests').value) || 1;
    const nights = (checkOutDate - checkInDate) / (1000 * 60 * 60 * 24);

    let totalCost = (roomPrices[roomType] * rooms + servicesTotal) * nights * guests;

    // Apply a discount for loyalty members
    const isLoyaltyMember = document.querySelector('input[name="loyalty"]:checked');
    if (isLoyaltyMember && isLoyaltyMember.value === 'yes') {
        totalCost *= 0.9; // Apply a 10% discount
    }

    document.getElementById('total-cost').value = totalCost.toFixed(2);
});

// Prevent form submission for demonstration purposes
document.getElementById('reservation-form').addEventListener('submit', function (e) {
    alert('Form submitted. Total cost: $' + document.getElementById('total-cost').value);
});
