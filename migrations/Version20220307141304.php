<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220307141304 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE point DROP FOREIGN KEY FK_B7A5F324762A0D2C');
        $this->addSql('DROP INDEX IDX_B7A5F324762A0D2C ON point');
        $this->addSql('ALTER TABLE point ADD parcours_id INT DEFAULT NULL, DROP id_parcours_id');
        $this->addSql('ALTER TABLE point ADD CONSTRAINT FK_B7A5F3246E38C0DB FOREIGN KEY (parcours_id) REFERENCES parcours (id)');
        $this->addSql('CREATE INDEX IDX_B7A5F3246E38C0DB ON point (parcours_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE parcours CHANGE name name VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE description description LONGTEXT NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE image_name image_name VARCHAR(255) DEFAULT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE point DROP FOREIGN KEY FK_B7A5F3246E38C0DB');
        $this->addSql('DROP INDEX IDX_B7A5F3246E38C0DB ON point');
        $this->addSql('ALTER TABLE point ADD id_parcours_id INT NOT NULL, DROP parcours_id, CHANGE text text LONGTEXT DEFAULT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE point ADD CONSTRAINT FK_B7A5F324762A0D2C FOREIGN KEY (id_parcours_id) REFERENCES parcours (id)');
        $this->addSql('CREATE INDEX IDX_B7A5F324762A0D2C ON point (id_parcours_id)');
        $this->addSql('ALTER TABLE `user` CHANGE email email VARCHAR(180) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE password password VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE firstname firstname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE lastname lastname VARCHAR(255) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE number number VARCHAR(10) DEFAULT NULL COLLATE `utf8mb4_unicode_ci`');
    }
}
