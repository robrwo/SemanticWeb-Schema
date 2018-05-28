package SemanticWeb::Schema::EventStatusType;

# ABSTRACT: EventStatusType is an enumeration type whose instances represent several states that an Event may be in.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

EventStatusType is an enumeration type whose instances represent several
states that an Event may be in.




=cut


around json_ld_type => sub { return 'EventStatusType' };

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
