package SemanticWeb::Schema::RsvpResponseType;

# ABSTRACT: RsvpResponseType is an enumeration type whose instances represent responding to an RSVP request.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

RsvpResponseType is an enumeration type whose instances represent
responding to an RSVP request.




=cut


around json_ld_type => sub { return 'RsvpResponseType' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
