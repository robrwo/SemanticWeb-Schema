use utf8;

package SemanticWeb::Schema::diagnosis;

# ABSTRACT: One or more alternative conditions considered in the differential diagnosis process as output of a diagnosis process.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'diagnosis';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

One or more alternative conditions considered in the differential diagnosis
process as output of a diagnosis process.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
