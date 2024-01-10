use utf8;

package SemanticWeb::Schema::Registry;

# ABSTRACT: A registry-based study design.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Registry';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A registry-based study design.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
