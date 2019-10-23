use utf8;

package SemanticWeb::Schema::AskPublicNewsArticle;

# ABSTRACT: A <a class="localLink" href="http://schema

use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'AskPublicNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

A <a class="localLink" href="http://schema.org/NewsArticle">NewsArticle</a>
expressing an open call by a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>
asking the public for input, insights, clarifications, anecdotes,
documentation, etc., on an issue, for reporting purposes.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
