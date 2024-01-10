use utf8;

package SemanticWeb::Schema::representativeOfPage;

# ABSTRACT: Indicates whether this image is representative of the content of the page.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'representativeOfPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether this image is representative of the content of the page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
