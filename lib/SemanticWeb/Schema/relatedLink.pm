use utf8;

package SemanticWeb::Schema::relatedLink;

# ABSTRACT: A link related to this web page

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'relatedLink';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A link related to this web page, for example to other related web pages.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
