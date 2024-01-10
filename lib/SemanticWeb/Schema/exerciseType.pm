use utf8;

package SemanticWeb::Schema::exerciseType;

# ABSTRACT: Type(s) of exercise or activity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'exerciseType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Type(s) of exercise or activity, such as strength training, flexibility
training, aerobics, cardiac rehabilitation, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
