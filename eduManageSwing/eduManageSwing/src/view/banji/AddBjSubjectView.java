package view.banji;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import util.CallBack;
import util.Constant;
import view.ShowMessage;
import dao.BjSubjectDao;
import dao.SubjectDao;
import entity.BanJi;
import entity.Subject;

public class AddBjSubjectView {
	JTextField nameText;
	JFrame frame;
	CallBack callBack;
	BjSubjectDao bjSubDao = new BjSubjectDao();
	BanJi bj;
	private static AddBjSubjectView instance;

	public static AddBjSubjectView getInstance() {

		if (instance == null) {
			instance = new AddBjSubjectView();
		}

		return instance;
	}

	private AddBjSubjectView() {

	}

	public void createFrame(BanJi bj,CallBack callBack) {
		this.bj=bj;
		this.callBack = callBack;
		if (frame == null) {
			frame = new JFrame();
			init();
		} else {
			nameText.setText("");
			frame.setVisible(true);
		}
	}

	public void init() {

		frame.setSize(Constant.SUB_ADD_WIDTH, Constant.SUB_ADD_HEIGHT);
		frame.setLocationRelativeTo(null);
		frame.setTitle(Constant.SUB_ADD_TITLE);

		JPanel mainPanel = (JPanel) frame.getContentPane();
		BoxLayout boxLayout = new BoxLayout(mainPanel, BoxLayout.Y_AXIS);
		mainPanel.setLayout(boxLayout);

		JPanel panel1 = new JPanel(new FlowLayout(FlowLayout.CENTER, 20, 10));
		JPanel panel4 = new JPanel(new FlowLayout(FlowLayout.CENTER, 20, 10));

		mainPanel.add(panel1);
		mainPanel.add(panel4);
		// ����
		JLabel nameLabel = new JLabel();
		nameLabel.setText(Constant.SUB_NAME);
		panel1.add(nameLabel);

		nameText = new JTextField();
		nameText.setPreferredSize(new Dimension(120, 30));
		panel1.add(nameText);

		JButton saveBtn = new JButton();
		saveBtn.setText(Constant.MES_SAVE);
		saveBtn.setPreferredSize(new Dimension(90, 30));
		panel4.add(saveBtn);
		saveBtn.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				String name = nameText.getText();
				Subject sub = new Subject();
				//sub.setName(name);

				boolean rs = bjSubDao.add(name,bj);

				ShowMessage.show(rs, Constant.MES_ADD);

				frame.dispose();
				callBack.call();
			}
		});
		frame.setVisible(true);

	}

}
