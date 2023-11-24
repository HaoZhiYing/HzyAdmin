using HZY.Framework.Repository.EntityFramework;
using HZY.Repository.Admin.Entities.Systems;
using Microsoft.Extensions.Logging;

namespace HZY.WinFormDemo
{
    public partial class Form1 : Form
    {
        private readonly ILogger<Form1> _logger;
        private IRepository<SysUser> _sysUserRepository;

        public Form1(ILogger<Form1> logger, IRepository<SysUser> sysUserRepository)
        {
            InitializeComponent();
            _logger = logger;
            _sysUserRepository = sysUserRepository;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            dataGridView1.DataBindings.Clear();
            dataGridView1.DataSource = _sysUserRepository.Select.ToList();

            _logger.LogInformation("Form1_Load 666");

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var user = _sysUserRepository.Select.FirstOrDefault();

            MessageBox.Show($"�û�����{user?.Name} ��¼����{user?.LoginName} �û����룺{user?.Password}");
        }

    }
}
