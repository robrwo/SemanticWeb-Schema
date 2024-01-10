use utf8;

package SemanticWeb::Schema::Wholesale;

# ABSTRACT: The drug's cost represents the wholesale acquisition cost of the drug.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Wholesale';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The drug's cost represents the wholesale acquisition cost of the drug.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
