package me.realtree.model;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class Board {

	private Long bno;
	private String title;
	private String content;
	private String writer;
	private LocalDateTime regDate;
	private LocalDateTime updateDate;
}
