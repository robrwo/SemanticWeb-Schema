use utf8;

package SemanticWeb::Schema::boardingGroup;

# ABSTRACT: The airline-specific indicator of boarding order / preference.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'boardingGroup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The airline-specific indicator of boarding order / preference.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
