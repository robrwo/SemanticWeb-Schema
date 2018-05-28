package SemanticWeb::Schema::ComedyEvent;

# ABSTRACT: Event type: Comedy event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Event type: Comedy event.




=cut


around json_ld_type => sub { return 'ComedyEvent' };

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
