use utf8;

package SemanticWeb::Schema::WebContent;

# ABSTRACT: WebContent is a type representing all [[WebPage]]

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'WebContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

WebContent is a type representing all [[WebPage]], [[WebSite]] and
[[WebPageElement]] content. It is sometimes the case that detailed
distinctions between Web pages, sites and their parts is not always
important or obvious. The [[WebContent]] type makes it easier to describe
Web-addressable content without requiring such distinctions to always be
stated. (The intent is that the existing types [[WebPage]], [[WebSite]] and
[[WebPageElement]] will eventually be declared as subtypes of
[[WebContent]].) 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
