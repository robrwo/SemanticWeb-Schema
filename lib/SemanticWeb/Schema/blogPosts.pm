use utf8;

package SemanticWeb::Schema::blogPosts;

# ABSTRACT: Indicates a post that is part of a [[Blog]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'blogPosts';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a post that is part of a L<SemanticWeb::Schema::Blog>. Note that historically, what we term a "Blog" was once known as a "weblog", and that what we term a "BlogPosting" is now often colloquially referred to as a "blog".



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
