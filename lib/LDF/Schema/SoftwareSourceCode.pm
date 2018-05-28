package LDF::Schema::SoftwareSourceCode;

# ABSTRACT: Computer programming source code

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Computer programming source code. Example: Full (compile ready) solutions,
code snippet samples, scripts, templates.




=head1 ATTRIBUTES


=head2 C<code_repository>

C<codeRepository>

Link to the repository where the un-compiled, human readable code and
related code is located (SVN, github, CodePlex).


A code_repository should be one of the following types:

=over

=item C<Str>

=back

=cut

has code_repository => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<code_sample_type>

C<codeSampleType>

What type of code sample: full (compile ready) solution, code snippet,
inline code, scripts, template.


A code_sample_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has code_sample_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<programming_language>

C<programmingLanguage>

The computer programming language.


A programming_language should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::ComputerLanguage']>

=back

=cut

has programming_language => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<runtime>



Runtime platform or script interpreter dependencies (Example - Java v1,
Python2.3, .Net Framework 3.0).


A runtime should be one of the following types:

=over

=item C<Str>

=back

=cut

has runtime => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<runtime_platform>

C<runtimePlatform>

Runtime platform or script interpreter dependencies (Example - Java v1,
Python2.3, .Net Framework 3.0).


A runtime_platform should be one of the following types:

=over

=item C<Str>

=back

=cut

has runtime_platform => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<sample_type>

C<sampleType>

What type of code sample: full (compile ready) solution, code snippet,
inline code, scripts, template.


A sample_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has sample_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<target_product>

C<targetProduct>

Target Operating System / Product to which the code applies. If applies to
several versions, just the product name can be used.


A target_product should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::SoftwareApplication']>

=back

=cut

has target_product => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'SoftwareSourceCode' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'codeRepository' => $self->curry::_serializer('code_repository'),
       'codeSampleType' => $self->curry::_serializer('code_sample_type'),
       'programmingLanguage' => $self->curry::_serializer('programming_language'),
       'runtime' => $self->curry::_serializer('runtime'),
       'runtimePlatform' => $self->curry::_serializer('runtime_platform'),
       'sampleType' => $self->curry::_serializer('sample_type'),
       'targetProduct' => $self->curry::_serializer('target_product'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
