use utf8;

package SemanticWeb::Schema::isBasedOnUrl;

# ABSTRACT: A resource that was used in the creation of this resource

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isBasedOnUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A resource that was used in the creation of this resource. This term can be
repeated for multiple sources. For example,
http://example.com/great-multiplication-intro.html.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
