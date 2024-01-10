use utf8;

package SemanticWeb::Schema::labelDetails;

# ABSTRACT: Link to the drug's label details.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'labelDetails';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Link to the drug's label details.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
