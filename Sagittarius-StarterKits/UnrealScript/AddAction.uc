class AddAction extends Action;

var private array<string> Attributes;

function AddAttribute(string field, string value)
{
	Attributes.AddItem(field $ "::" $ value);
}

function string GetURLString()
{
	local string str, delim;
	local int i;
	str = "";
	delim = "";
	for (i = 0; i < Attributes.Length; i++)
	{
		str $= (delim $ "a=" $ Attributes[i]);
		delim = "&";
	}
	return str;
}

DefaultProperties
{
	Handler="/dbadd"
}