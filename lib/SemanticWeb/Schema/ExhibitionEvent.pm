package SemanticWeb::Schema::ExhibitionEvent;

# ABSTRACT: Event type: Exhibition event, e

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Event type: Exhibition event, e.g. at a museum, library, archive,
tradeshow, ...




=cut


around json_ld_type => sub { return 'ExhibitionEvent' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
