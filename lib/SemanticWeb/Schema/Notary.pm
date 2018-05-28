package SemanticWeb::Schema::Notary;

# ABSTRACT: A notary.

use Moo;

extends qw/ SemanticWeb::Schema::LegalService /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A notary.




=cut


around json_ld_type => sub { return 'Notary' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::LegalService>

=cut

1;
