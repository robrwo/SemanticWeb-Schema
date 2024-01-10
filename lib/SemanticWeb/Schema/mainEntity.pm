use utf8;

package SemanticWeb::Schema::mainEntity;

# ABSTRACT: Indicates the primary entity described in some page or other CreativeWork.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mainEntity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the primary entity described in some page or other CreativeWork.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
