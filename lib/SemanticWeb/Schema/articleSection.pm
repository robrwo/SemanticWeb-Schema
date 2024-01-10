use utf8;

package SemanticWeb::Schema::articleSection;

# ABSTRACT: Articles may belong to one or more 'sections' in a magazine or newspaper

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'articleSection';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Articles may belong to one or more 'sections' in a magazine or newspaper,
such as Sports, Lifestyle, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
