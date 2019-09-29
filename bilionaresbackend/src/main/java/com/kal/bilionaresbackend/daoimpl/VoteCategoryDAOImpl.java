package com.kal.bilionaresbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kal.bilionaresbackend.dao.VoteCategoryDAO;
import com.kal.bilionaresbackend.dto.VoteCategory;
@Repository("VoteCateryDAO")
public class VoteCategoryDAOImpl implements VoteCategoryDAO {

	// list of category
	
	private static List<VoteCategory> votes = new ArrayList<>(); 
	
	static {
		
		VoteCategory vote = new VoteCategory();
		
		// adding first votes 
		vote.setCatid(1);
		vote.setUid(1);
		vote.setVotecount(575);
		vote.setPostcount(897);
		vote.setComcount(789);
		vote.setAdcount(2004);
		
		
		votes.add(vote);
	}
	
	@Override
	public List<VoteCategory> list() {
		// TODO Auto-generated method stub
		return votes ;
	}

}
