use utf8;

package SemanticWeb::Schema::blogPost;

# ABSTRACT: A posting that is part of this blog.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'blogPost';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A posting that is part of this blog.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
