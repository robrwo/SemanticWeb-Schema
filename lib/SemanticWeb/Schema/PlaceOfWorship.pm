package SemanticWeb::Schema::PlaceOfWorship;

# ABSTRACT: Place of worship

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Place of worship, such as a church, synagogue, or mosque.




=cut


around json_ld_type => sub { return 'PlaceOfWorship' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
