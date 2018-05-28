package SemanticWeb::Schema::GatedResidenceCommunity;

# ABSTRACT: Residence type: Gated community.

use Moo;

extends qw/ SemanticWeb::Schema::Residence /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Residence type: Gated community.




=cut


around json_ld_type => sub { return 'GatedResidenceCommunity' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Residence>

=cut

1;
