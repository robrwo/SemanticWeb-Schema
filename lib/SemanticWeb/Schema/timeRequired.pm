use utf8;

package SemanticWeb::Schema::timeRequired;

# ABSTRACT: Approximate or typical time it usually takes to work with or through the content of this work for the typical or target audience.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'timeRequired';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Approximate or typical time it usually takes to work with or through the
content of this work for the typical or target audience.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
