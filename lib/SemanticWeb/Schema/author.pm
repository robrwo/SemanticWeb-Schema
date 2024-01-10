use utf8;

package SemanticWeb::Schema::author;

# ABSTRACT: The author of this content or rating

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'author';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The author of this content or rating. Please note that author is special in
that HTML 5 provides a special mechanism for indicating authorship via the
rel tag. That is equivalent to this and may be used interchangeably.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
