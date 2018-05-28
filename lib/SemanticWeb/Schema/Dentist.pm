package SemanticWeb::Schema::Dentist;

# ABSTRACT: A dentist.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness SemanticWeb::Schema::MedicalOrganization /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A dentist.




=cut


around json_ld_type => sub { return 'Dentist' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
