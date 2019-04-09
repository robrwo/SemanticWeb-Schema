use utf8;

package SemanticWeb::Schema::Table;

# ABSTRACT: A table on a Web page.

use Moo;

extends qw/ SemanticWeb::Schema::WebPageElement /;


use MooX::JSON_LD 'Table';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

A table on a Web page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPageElement>

=cut

1;
