use utf8;

package SemanticWeb::Schema::beforeMedia;

# ABSTRACT: A media object representing the circumstances before performing this direction.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'beforeMedia';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A media object representing the circumstances before performing this
direction.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
