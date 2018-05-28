package SemanticWeb::Schema::NGO;

# ABSTRACT: Organization: Non-governmental Organization.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Organization: Non-governmental Organization.




=cut


around json_ld_type => sub { return 'NGO' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
