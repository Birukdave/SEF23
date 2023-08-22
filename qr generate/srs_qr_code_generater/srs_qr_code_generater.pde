import org.apache.commons.lang3.RandomStringUtils;

String code = RandomStringUtils.randomAlphanumeric (7);
import static javax.swing.JOptionPane.*;

String destination = showInputDialog ("enter your destination pleas");
String qrcodes[] = loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
String starting_point="srs";
String qrcode=starting_point+"/"+code+"/"+destination;
qrcodes = append(qrcodes, qrcode);
saveStrings ("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt", qrcodes);
print(qrcode);
