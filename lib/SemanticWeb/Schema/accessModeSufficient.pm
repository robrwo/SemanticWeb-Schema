use utf8;

package SemanticWeb::Schema::accessModeSufficient;

# ABSTRACT: A list of single or combined accessModes that are sufficient to understand all the intellectual content of a resource

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accessModeSufficient';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A list of single or combined accessModes that are sufficient to understand
all the intellectual content of a resource. Values should be drawn from the
[approved
vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessModeSuf
ficient-vocabulary).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
