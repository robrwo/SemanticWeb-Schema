use utf8;

package SemanticWeb::Schema::WPAdBlock;

# ABSTRACT: An advertising section of the page.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::WebPageElement /;


use MooX::JSON_LD 'WPAdBlock';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An advertising section of the page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPageElement>

=cut

1;
