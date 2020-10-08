package pl.coderslab.charity.service;

import org.springframework.stereotype.Service;
import pl.coderslab.charity.entity.Donation;
import pl.coderslab.charity.repository.DonationRepository;

import java.util.List;

@Service
public class DonationService {

    private final DonationRepository donationRepository;

    public DonationService(DonationRepository donationRepository) {
        this.donationRepository = donationRepository;
    }

    public long countDonations() {
        return donationRepository.count();
    }

    public Integer quantityTotal() {
        List<Donation> donations = donationRepository.findAll();
        int total = 0;
        for (Donation x : donations) {
            total += x.getQuantity();
        }
        return total;
    }

    public Donation addDonation(Donation donation) {
        return donationRepository.save(donation);
    }
}
