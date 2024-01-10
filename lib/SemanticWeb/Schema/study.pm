use utf8;

package SemanticWeb::Schema::study;

# ABSTRACT: A medical study or trial related to this entity.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'study';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A medical study or trial related to this entity.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
