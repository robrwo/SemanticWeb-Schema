package SemanticWeb::Schema::EventStatusType;

# ABSTRACT: EventStatusType is an enumeration type whose instances represent several states that an Event may be in.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

EventStatusType is an enumeration type whose instances represent several
states that an Event may be in.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'EventStatusType' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
