use utf8;

package SemanticWeb::Schema::supportingData;

# ABSTRACT: Supporting data for a SoftwareApplication.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'supportingData';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Supporting data for a SoftwareApplication.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
