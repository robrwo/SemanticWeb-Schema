use utf8;

package SemanticWeb::Schema::Nonprofit527;

# ABSTRACT: Nonprofit527: Non-profit type referring to political organizations.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit527';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit527: Non-profit type referring to political organizations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
