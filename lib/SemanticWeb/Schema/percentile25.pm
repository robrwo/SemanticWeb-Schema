use utf8;

package SemanticWeb::Schema::percentile25;

# ABSTRACT: The 25th percentile value.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'percentile25';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The 25th percentile value.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
