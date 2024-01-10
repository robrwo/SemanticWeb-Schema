use utf8;

package SemanticWeb::Schema::endOffset;

# ABSTRACT: The end time of the clip expressed as the number of seconds from the beginning of the work.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'endOffset';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The end time of the clip expressed as the number of seconds from the
beginning of the work.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
