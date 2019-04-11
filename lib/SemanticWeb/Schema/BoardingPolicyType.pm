use utf8;

package SemanticWeb::Schema::BoardingPolicyType;

# ABSTRACT: A type of boarding policy used by an airline.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'BoardingPolicyType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

A type of boarding policy used by an airline.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
