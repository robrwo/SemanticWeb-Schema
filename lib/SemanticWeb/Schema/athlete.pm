use utf8;

package SemanticWeb::Schema::athlete;

# ABSTRACT: A person that acts as performing member of a sports team; a player as opposed to a coach.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'athlete';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A person that acts as performing member of a sports team; a player as
opposed to a coach.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
