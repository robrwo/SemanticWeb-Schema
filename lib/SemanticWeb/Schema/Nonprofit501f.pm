use utf8;

package SemanticWeb::Schema::Nonprofit501f;

# ABSTRACT: Nonprofit501f: Non-profit type referring to Cooperative Service Organizations.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501f';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501f: Non-profit type referring to Cooperative Service
Organizations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
