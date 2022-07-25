package com.example.chat.domain.login;

import com.example.chat.domain.Member;
import com.example.chat.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LoginService {

    private final MemberRepository memberRepository;

    /**
     * @return null 로그인 실패
     */
    public Member login(String username, String password) {
        return memberRepository.findByUserName(username)
                .filter(m -> m.getPassword().equals(password))
                .orElse(null);
    }
}
