use utf8;

package SemanticWeb::Schema::TypesHealthAspect;

# ABSTRACT: Categorization and other types related to a topic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'TypesHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Categorization and other types related to a topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
