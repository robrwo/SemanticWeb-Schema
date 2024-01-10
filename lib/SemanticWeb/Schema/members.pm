use utf8;

package SemanticWeb::Schema::members;

# ABSTRACT: A member of this organization.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'members';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A member of this organization.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
