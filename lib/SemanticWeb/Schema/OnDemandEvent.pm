package SemanticWeb::Schema::OnDemandEvent;

# ABSTRACT: A publication event e

use Moo;

extends qw/ SemanticWeb::Schema::PublicationEvent /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A publication event e.g. catch-up TV or radio podcast, during which a
program is available on-demand.




=cut


around json_ld_type => sub { return 'OnDemandEvent' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::PublicationEvent>

=cut

1;
